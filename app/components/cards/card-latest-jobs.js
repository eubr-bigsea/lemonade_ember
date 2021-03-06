import Component from '@ember/component';
import { inject as service } from '@ember/service';

export default Component.extend({
  store: service(),
  sessionAccount: service(),
  i18n: service(),

  didInsertElement(){
    this.set('locale', this.get('i18n.locale'));
    var cardId = this.get('conf.card-id');
    var userId = this.get('sessionAccount.userId');

    this.get('store').findRecord('card', cardId, { reload: true }).then((card) => {
      this.set('card', card);
      this.get('store').query('job', {
        user_id: userId,
        enabled: true,
        page: '1',
        size: card.get('content.size'),
        sort: 'created',
        asc: false
      }).then((jobs) => {
        if(!this.isDestroyed){
          this.set('jobs', jobs);
        }
      });
    });
  }
});

