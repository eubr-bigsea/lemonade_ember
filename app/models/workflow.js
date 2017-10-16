import { computed } from '@ember/object';
import DS from 'ember-data';

const { attr } = DS;

export default DS.Model.extend({
  numericID: computed('id', function() { return Number(this.get('id')); }),
  image: attr('string'),
  name: attr('string'),
  user: attr(),
  flows: attr(),
  tasks: attr(),
  platform: attr(),
  updated: attr('dates'),
  description: attr('string'),
  enabled: attr('boolean'),
});
