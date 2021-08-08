class Search {
  constructor(props = {}) {
    this.props = props;
    this.button = document.querySelector(props.buttonSelector);
    this.panel = document.querySelector(props.panelSelector);
    document.addEventListener('click', (event) => {
      this.hidePanel();
    });
    this.panel.addEventListener('click', (event) => {
      event.stopPropagation();
    });
    this.init();
  }
  hidePanel() {
    let { activeClass } = this.props;
    this.button.classList.remove(activeClass);
    this.panel.style.height = '0px';
  }
  showPanel() {
    let { activeClass } = this.props;
    this.button.classList.add(activeClass);
    this.panel.style.height = this.panel.scrollHeight + 'px';
  }
  init() {
    let { activeClass } = this.props;
    let self = this;
    this.button.addEventListener('click', (event) => {
      event.stopPropagation();
      let nextState = !this.button.classList.contains(activeClass);
      nextState ? this.showPanel() : this.hidePanel();
    });
  }
}

export default Search;
