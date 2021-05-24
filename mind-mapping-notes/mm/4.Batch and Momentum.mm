
<map>
  <node ID="root" TEXT="4.Batch and Momentum">
    <node TEXT="Batch" ID="aa5974b16a3900b4197282dc395fe8b1" STYLE="bubble" POSITION="right">
      <node TEXT="概念" ID="bc412d245f4870850564dc15e190b415" STYLE="fork">
        <node TEXT="在每1epoch训练中把全部数据随机shuffle分成若干个batch，用每一个batch做一次梯度下降" ID="e2b1fc7d47daffb82bbfaaf7282c5a05" STYLE="fork"/>
      </node>
      <node TEXT="比较" ID="8e8fe076b05dcf90aade4b36fe97bd3c" STYLE="fork">
        <node TEXT="small batch" ID="31e7ebc92f58af99afc5d7eb25170479" STYLE="fork">
          <node TEXT="不考虑并行运算时，冷却较短，但是更新不稳定" ID="110c16d81868ea0bb20815943563b389" STYLE="fork">
            <node TEXT="考虑 并行运算，实际上small batch跑完1 epoch花的时间比large batch还要多，它要花更多时间在batch update上" ID="ba8d8de57b40407e92a0ed086cc0cc1d" STYLE="fork">
              <node TEXT="" ID="b11a161ebdb14f4a28a4c4f352f699be" STYLE="fork"/>
            </node>
            <node TEXT="small batch的不稳定Noisy反而可以帮助更好地训练，同时在测试集上更有助于泛化" ID="0c621f25a57e98baf1787291b7352344" STYLE="fork">
              <node TEXT="" ID="56eab9e8e2a469e7d7ec5bcc15a0564e" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="large batch" ID="774f8d0f4b3e8706deca37ff711f0279" STYLE="fork">
          <node TEXT="不考虑并行运算时，冷却时间长，但是更新稳定" ID="676f8df10d76d5f328be4810eabb9ace" STYLE="fork">
            <node TEXT="考虑并行运算，冷却时间在一定大小内和small batch差不多，除非batch特别大后才差距明显。但实际上，large batch更新1 epoch反而比较快" ID="38baf99eeb6a71ea6a167f798ae8c2d1" STYLE="fork"/>
            <node TEXT="large batch容易卡在saddle point，而small batch每次计算的loss并不相同，在前一步可能卡到saddle point，但是下一步可能可以继续走" ID="38d27e6a65ebc3ee59ea42dab82b8b64" STYLE="fork"/>
          </node>
        </node>
      </node>
    </node>
    <node TEXT="Momentum" ID="294e7b47612e22ea6c62100845d69841" STYLE="bubble" POSITION="right">
      <node TEXT="Vanilla Gradient Descent" ID="44c6d119c9109a17ec49d0b939e2356f" STYLE="fork">
        <node TEXT="计算梯度，沿梯度反向更新" ID="1b2baf1e42f0276d5d4b634651597245" STYLE="fork"/>
      </node>
      <node TEXT="Gradient Descent + Momentum" ID="c0c8c7ea1a9f33ea24b5e3943a2d2804" STYLE="fork">
        <node TEXT="计算梯度及前一步的方向，进行矢量合成进行更新" ID="0d3d6700f5f1fecef2f47cdd54ac4209" STYLE="fork">
          <node TEXT="Momentum实际上考虑了过去所有Gradient的总和" ID="65cc47e62b3d9a9e11ceb27144eae960" STYLE="fork">
            <node TEXT="引入momentum后，即使在local minima时梯度为0，但是有前一步的动量，还是可以继续更新" ID="064c4a21e40bce4d7857282f78f16510" STYLE="fork"/>
          </node>
        </node>
      </node>
    </node>
  </node>
</map>