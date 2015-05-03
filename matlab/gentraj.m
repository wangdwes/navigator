
function [xtraj, ytraj, timepoints] = gentraj(waypoints, tau, t)

  % GENTRAJ Generate trajectory. 
  % 
  %   [XTRAJ, YTRAJ] = GENTRAJ(WAYPOINTS, TAU, T) interpolates to find 
  %   the x and y coordinates on a trajectory. WAYPOINTS is the output 
  %   of Navigator.plan; TAU is the desired time of the entire flight, 
  %   and T is the query points. 
  % 
  %   [XTRAJ, YTRAJ, TIMEPOINTS] = GENTRAJ(WAYPOINTS, TAU, T) in addition
  %   returns the timepoints at which XTRAJ and YTRAJ should be reached. 
  % 
  %   Example usage:
  %     nav = Navigator(-0.4, 0.4, -0.4, 0.4, 0.005);
  %     % ... additional initialization of the arena. 
  %     waypoints = nav.plan(0.1);
  %     [xtraj, ytraj, tp] = gentraj(waypoints, 10, linspace(0: 10)); 
  % 
  %   Note: for smoother trajectory, use less query points. 

  weights = sqrt(sum(diff(waypoints) .^ 2, 2));
  timepoints = cumsum(vertcat(0, rdivide(tau, sum(weights)) * weights));

  xtraj = interp1(timepoints, waypoints(:, 1), t, 'spline'); 
  ytraj = interp1(timepoints, waypoints(:, 2), t, 'spline');

end 
 


