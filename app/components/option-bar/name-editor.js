import Ember from 'ember';

export default Ember.Component.extend({
  classNames: ['name-editor'],
  actions:{
    toggleEdit() {
      this.toggleProperty('isEditing');
      this.get('workflow').save();
    },
  },
});