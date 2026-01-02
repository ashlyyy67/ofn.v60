   public WorkshopForm() {
        initComponents();
        Timer flashTimer = new Timer(500, new ActionListener(){
        boolean visible = true;
        @Override
        public void actionPerformed(ActionEvent e){
workshoplabel.setVisible(visible);
visible =!visible;
}
});
flashTimer.start();

}
