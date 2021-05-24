
<map>
  <node ID="root" TEXT="1.Regression">
    <node TEXT="概念" ID="6ed4835280408c9e50a1bdcafb86b18e" STYLE="bubble" POSITION="right">
      <node TEXT="机器学习本质：让机器具备学习一个函数的能力" ID="93e459a0f5743fe463a1726534c5e4d7" STYLE="fork"/>
      <node TEXT="函数分类" ID="4a1426a4c84ba2ea9a2fa800988ad26a" STYLE="fork">
        <node TEXT="Regress：函数输出是标量scalar" ID="0d72e75e278a193bc15b2ec54b76e73c" STYLE="fork"/>
        <node TEXT="Classification：从目标类别中做选择" ID="0d1c7363e5b7a895038cf245e97b6cf3" STYLE="fork"/>
        <node TEXT="Structured Learning：如让机器生成一张图、文章等" ID="5dca614543e5d52d1f8f67604ef02787" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="机器学习步骤" ID="ac225fc0deb0ecc24d7f64b7b10638cf" STYLE="bubble" POSITION="right">
      <node TEXT="基于领域知识建立带有未知数的函数model" ID="0041cd15d8713f6ff4b6af704e61ac0a" STYLE="fork"/>
      <node TEXT="定义损失函数Loss" ID="553cff8ebf2b3c16f8507ee476be8ba5" STYLE="fork">
        <node TEXT="Loss输入：model参数计算的结果及训练集" ID="aee6004372a07bba31822985963d554b" STYLE="fork"/>
        <node TEXT="用于衡量model参数的好坏" ID="557ecbce3dbad3f9c8bf8c7a1bbe57a5" STYLE="fork"/>
        <node TEXT="常见Loss" ID="d990198b21c2bab349d8fc4d3df3c437" STYLE="fork">
          <node TEXT="MAE：平均绝对误差" ID="95deaa956763aa6b7a9759dea4323cd5" STYLE="fork"/>
          <node TEXT="MSE：均方误差" ID="ec57975d58ae834ad489d4b0470b4c6f" STYLE="fork"/>
          <node TEXT="Cross-entropy：交叉熵损失函数" ID="6d2d87fbb844983538b6c6df9dbf44cc" STYLE="fork">
            <node TEXT="分类任务" ID="106dd4afed08cbfa56c1551c4da59f28" STYLE="fork"/>
          </node>
        </node>
        <node TEXT="Error Face：不同模型参数下计算的loss画出的等高线图" ID="8a10621e5da0a6ea3e156f6487c891c2" STYLE="fork"/>
      </node>
      <node TEXT="Optimization优化" ID="dc7c3fc5486e8ba06a6bfbbcc06f9ffe" STYLE="fork">
        <node TEXT="定义：找到未知参数的最优值使得Loss最小" ID="38823eb5622902f22afba1614b396646" STYLE="fork"/>
        <node TEXT="方法：Gradient Descent" ID="d6d99a39c7ad589121fa502deb1dc2f4" STYLE="fork">
          <node TEXT="" ID="888a6a2bcb0ed0721dfa7ba9b79edfa5" STYLE="fork"/>
          <node TEXT="步骤" ID="ed0d530e7f68fe88467d0e8fc1ec99a8" STYLE="fork">
            <node TEXT="随机初始化参数" ID="4317064ee96aa7898ba95d0eda5871f3" STYLE="fork">
              <node TEXT="kaiming初始化" ID="f210668f8a2855b22ba5da7e92888fa6" STYLE="fork"/>
              <node TEXT="Xavier初始化" ID="e406cf31a1deaa2cea845440408a868c" STYLE="fork"/>
              <node TEXT="其他" ID="619094a00a5042276088b5ab90e610e9" STYLE="fork"/>
            </node>
            <node TEXT="更新参数" ID="9c2a20a576ed79f9cfd4e9fc88bdae9a" STYLE="fork">
              <node TEXT="计算微分" ID="96c4582e796f10b74f1920f364aefd66" STYLE="fork"/>
              <node TEXT="微分反方向更新" ID="94720ca9ae6bd057baae08eabac7b640" STYLE="fork"/>
              <node TEXT="学习率learning rate" ID="fdc240e8f80adee4fd873f147e6effc2" STYLE="fork"/>
            </node>
          </node>
          <node TEXT="更新停止" ID="f6acb9d2b74437b14ea4d954db9e8a74" STYLE="fork">
            <node TEXT="训练到目标次数达到收敛" ID="f1ccf57a1eb237384ee6eb41a7cf8f06" STYLE="fork"/>
            <node TEXT="微分为0" ID="45ab482bb3b06fb8aacb905aa5ec147e" STYLE="fork"/>
          </node>
          <node TEXT="最优解" ID="b35cd8d3522a6e4a3108ec4a4246b17b" STYLE="fork">
            <node TEXT="global minima" ID="2eb8b8c86ef81c2a516b85a67ec1f7f8" STYLE="fork"/>
            <node TEXT="local minima" ID="e9e23a5d1de57d38eaed3c533b024f09" STYLE="fork"/>
          </node>
        </node>
      </node>
    </node>
    <node TEXT="非线性函数" ID="4cb989d0a4be4e4eba0149372b636ca7" STYLE="bubble" POSITION="right">
      <node TEXT="线性函数的弹性complex有限，无法逼近更复杂的问题的解" ID="a44c9f3e51aaf6d1cc343e8f6c856f7f" STYLE="fork"/>
      <node TEXT="sigmoid函数" ID="ebede3a7d552b641e08744ce87f70f11" STYLE="fork">
        <node TEXT="通过不同的w、b、c制造不同的sigmoid函数复合成复杂piecewise Linear Function" ID="dfcbc26997202e59e17b5b7d9ba14280" STYLE="fork"/>
        <node TEXT="利用piecewise linear function复合形成不同的连续函数" ID="14449814e2e56b96f442254838358927" STYLE="fork"/>
      </node>
      <node TEXT="向量化表示" ID="f0cdb8e15e859fe8100fe34e826e97c0" STYLE="fork">
        <node TEXT="模型向量化" ID="f77221921857418f1976c4b6335a1d65" STYLE="fork">
          <node TEXT="" ID="ec56995e6ac6a1ad30d623e3ba91a6e2" STYLE="fork">
            <node TEXT="" ID="c7e8d81b7d206a88a5c7403d87e540cb" STYLE="fork">
              <node TEXT="" ID="d6e6819e5f734c3a4476e44e0f555f5f" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="optimization向量化" ID="7d0113fd5858075edfb6e7fd9badba60" STYLE="fork">
          <node TEXT="将模型的未知参数堆叠为θ表示" ID="8fde84c3223d82870c6c6f4f8e0f3c71" STYLE="fork">
            <node TEXT="▽表示梯度下降。" ID="d9f15f5e772c7f3114b6343e17597960" STYLE="fork">
              <node TEXT="" ID="375b5d74aefec6dea07e7aeacdaceb98" STYLE="fork">
                <node TEXT="利用batch来做GD" ID="74a2572f267bcd127486902137e9e7c7" STYLE="fork"/>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</map>