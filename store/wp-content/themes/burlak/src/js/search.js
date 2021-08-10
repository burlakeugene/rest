class Search {
  constructor(props = {}) {
    this.props = props;
    this.button = document.querySelector('.search--button');
    this.panel = document.querySelector('.search--panel');
    document.addEventListener('click', (event) => {
      this.hide();
    });
    this.panel.addEventListener('click', (event) => {
      event.stopPropagation();
    });
    this.init();
  }
  hide() {
    this.props.onHide && this.props.onHide();
    this.button.classList.remove('search--button--active');
    this.panel.style.height = '0px';
  }
  show() {
    this.props.onShow && this.props.onShow();
    this.button.classList.add('search--button--active');
    this.panel.style.height = this.panel.scrollHeight + 'px';
  }
  init() {
    let self = this;
    this.button.addEventListener('click', (event) => {
      event.stopPropagation();
      let nextState = !this.button.classList.contains('search--button--active');
      nextState ? this.show() : this.hide();
    });
  }
}

export default Search;
