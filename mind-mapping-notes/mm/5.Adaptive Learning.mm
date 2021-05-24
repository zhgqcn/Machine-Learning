
<map>
  <node ID="root" TEXT="5.Adaptive Learning">
    <node TEXT="Training Stuck ≠ Small Gradient" ID="c41bbb1f9557bc38fbf575beb3869f5f" STYLE="bubble" POSITION="right">
      <node TEXT="不能把loss不下降就说是卡在local minima或者saddle point上" ID="714e8da7efb7f68438e438828dd42407" STYLE="fork"/>
      <node TEXT="虽然loss无法下降，但是梯度的标量仍然不小，只是来回震荡而无法下降。" ID="1da6642f5f489fe2bcf4aff31b3aa93f" STYLE="fork"/>
    </node>
    <node TEXT="即使没有critical point，训练也难进行" ID="1762bc437444ee32691a05042b4ecf05" STYLE="bubble" POSITION="right">
      <node TEXT="学习率太大时无法到达最优点。但是当逐步调小学习率，虽然可以转弯了，但是学习率太小了也无法到达最优点" ID="45291842b34b17cd5a6ca1f7f522bb2a" STYLE="fork"/>
    </node>
    <node TEXT="针对不同参数设置不同学习率" ID="632418ce0831e9585070cab6893844a2" STYLE="bubble" POSITION="right">
      <node TEXT="Root mean square" ID="ddebe25e66ded008c49622ff0fd0b793" STYLE="fork">
        <node TEXT="学习率除以累积梯度的均方根" ID="71db6b89201d2e31a3f6d995a32e5430" STYLE="fork">
          <node TEXT="Adagrad" ID="4b4149a390892a8793e9dae19b995164" STYLE="fork">
            <node TEXT="在坡度小时，累积梯度小，则σ小，所以η/σ较大，总体学习率项变大" ID="a1025d497dace6466e36201ac8099504" STYLE="fork"/>
            <node TEXT="在坡度大时，累积梯度大，则σ大，所以η/σ较小，总体学习率项变小" ID="775e10e848bc2eda35e5715e7d18efef" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="RMS Prop" ID="abb6de7721098cd538cc8fe363838086" STYLE="fork">
        <node TEXT="在绿色箭头这个地方坡度比较陡峭,所以我们需要比较小的learning rate，但是走到了中间这一段，到了红色箭头的时候呢,坡度又变得平滑,平滑了起来就需要比较大的learning rate,所以就算是同一个参数同一个方向,我们也期待learning rate是可以动态的调整的。" ID="709c3ad5d0942e5b40f2b9cd13bdebda" STYLE="fork">
          <node TEXT="在Root mean square中每个梯度同等重要，在RMS Prop中，可以调整每个梯度的不同重要程度，其中α是超参数" ID="41c4dab3fad5ce80067d18a755be93bd" STYLE="fork">
            <node TEXT="α较小时，1-α较大，说明当前梯度比较重要" ID="556056874dacee989a42d54c85f862a9" STYLE="fork"/>
            <node TEXT="α较大时，1-α较小，说明当前梯度比较不重要" ID="924108fdebf84da136b0bf44ca1fe38e" STYLE="fork"/>
            <node TEXT="由于α的存在，可以使得RMS Prop比Adagrad更快适应不同的坡度" ID="cc6c99057b55735757bd73472914b9e4" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="Adam" ID="a092c8069facbe876a06e375fd71fa27" STYLE="fork">
        <node TEXT="" ID="8f6061ece55559dfa767dc3cbb0b24af" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="Learning Rate Scheduling" ID="1cfef49ea5b5d945f2937842ec64da05" STYLE="bubble" POSITION="right">
      <node TEXT="学习率不是固定值，而是随时间变化" ID="c0f7504d36209454b72ffe55e43ea237" STYLE="fork">
        <node TEXT="常用的是Learning rate decay，即随着时间进行学习率不断变小" ID="e3f254d1d47ddbd41fe721aa956ec514" STYLE="fork"/>
        <node TEXT="还有一个方法是Warm up，先变大后变小，该超参数可以调节" ID="5f40f79bc0d2835da871a2d50e95a165" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="最终的参数更新函数" ID="965b474679eb9691189ddbbdd1647b0f" STYLE="bubble" POSITION="right">
      <node TEXT="Momentum考虑了所有梯度的累加包含了梯度的方向信息，是矢量的累加" ID="1cf05bafc0bfdd311bb930770995c00c" STYLE="fork"/>
      <node TEXT="σ累加只考虑标量值而不考虑方向" ID="b1c4fde9e15726c33983d90d8b006b73" STYLE="fork"/>
      <node TEXT="所以，虽然Momentum和σ虽然一个在分母一个在分子，但是他们不会相互抵消，都能发挥作用" ID="4ea627730a0b79ec851d40d2f4913281" STYLE="fork"/>
    </node>
  </node>
</map>