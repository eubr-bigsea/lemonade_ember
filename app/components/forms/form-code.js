import FormComponent from 'lemonade-ember/lib/form-component';
import { computed } from '@ember/object';

export default FormComponent.extend({
  classNameBindings: ['error'],
  error: computed('field.error', function(){ return this.get('field.error') }),
});
