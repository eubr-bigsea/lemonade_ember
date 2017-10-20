import Ember from 'ember';

export function checkContent(params/*, hash*/) {
  if(params[0].status == 'ERROR')
  {
    return 'status-ERROR';
  }
  else if(params[0].logs.length > 0)
  {
    for(var i=0; i < params[0].logs.length; i++){
      if(params[0].logs[i].type === 'HTML'){
        return 'status-eye flash-button';
      }
    };
    return 'status-completed';
  }
}

export default Ember.Helper.helper(checkContent);
