
<map>
  <node ID="root" TEXT="2.overfit">
    <node TEXT="训练集上损失函数" ID="6e023a12012fc1c44b40d81fc5d10ffc" STYLE="bubble" POSITION="right">
      <node TEXT="高" ID="1f9914b141f11af07b0ba8ffc5d3342f" STYLE="fork">
        <node TEXT="model bias问题" ID="8d658a4420f218b27d6dba8c0474f496" STYLE="fork">
          <node TEXT="增加模型复杂度" ID="a66ff5d45488c386574a38db210211de" STYLE="fork"/>
        </node>
        <node TEXT="optimization问题" ID="ff6b8479cd99db1fe7004da000c677f7" STYLE="fork">
          <node TEXT="更改优化方式" ID="c2afcdd0101ada42f567241921ee9d00" STYLE="fork"/>
          <node TEXT="与model bias区分" ID="45b86be459e2ec53be94f3dbd03a094f" STYLE="fork">
            <node TEXT="从简单到复杂构建网络结构" ID="79d4c8ff52bf52bd6f9f82c06722b101" STYLE="fork"/>
            <node TEXT="复杂网络效果更差为优化问题" ID="a2fdc378a7bb06146b0bee6b8c4a7400" STYLE="fork"/>
          </node>
        </node>
      </node>
      <node TEXT="低" ID="7bdf78709cf7506464b25ac04909be5d" STYLE="fork">
        <node TEXT="在测试集上损失函数" ID="f506cb82b375338afad95157cf220e74" STYLE="fork">
          <node TEXT="高" ID="f429e4264a92fddb6bd10b300c4a10ca" STYLE="fork">
            <node TEXT="过拟合" ID="9b97f93137e4d19084099ba80db9a822" STYLE="fork">
              <node TEXT="增加数据集" ID="04e1205bface938fe6cf16c1fcc50a08" STYLE="fork"/>
              <node TEXT="数据扩增" ID="03ad1ce7ad8201aba6a4c9009964d79f" STYLE="fork"/>
              <node TEXT="降低模型复杂度" ID="fc89de30d4c6c2d5a6193dc67ea96c17" STYLE="fork">
                <node TEXT="更少参数与参数共享" ID="052aa85c8261d918551f620c3c5aba1e" STYLE="fork"/>
                <node TEXT="提前结束训练" ID="1c6dcd146af1c9132abeb9b65cbda323" STYLE="fork"/>
                <node TEXT="Regularization" ID="4d861d9e3336bf43b1df243b86ff2520" STYLE="fork"/>
                <node TEXT="Dropout" ID="9ec8193ae5abf01106e311d59409912e" STYLE="fork"/>
                <node TEXT="减少使用features" ID="02cb5e5525d66cfe096b650e4c9ced10" STYLE="fork"/>
                <node TEXT="不能太大降低复杂度，否则出现model bias" ID="d5ce33f4ea3015c73558c73d578c0d53" STYLE="fork"/>
              </node>
            </node>
            <node TEXT="数据不匹配" ID="dc048f857365fbf17ff28bd2889f8727" STYLE="fork"/>
          </node>
          <node TEXT="低" ID="475fdbdfd1aaf63bfcedba7bc83d7a89" STYLE="fork">
            <node TEXT="😀" ID="72fe0c8beac975a02c9897c696212036" STYLE="fork">
              <node TEXT="挑选合适模型" ID="752a80a2ac898b264d3ec77d665620fe" STYLE="fork">
                <node TEXT="交叉验证" ID="8e9e638197c7fa64b0a7cc7e035e61da" STYLE="fork">
                  <node TEXT="划分训练集、验证集" ID="38aa6a267fcb80681f061c90d3a1325f" STYLE="fork"/>
                  <node TEXT="N - fold Cross Validation" ID="f1f1da5d260b728da0c56266004a5d3c" STYLE="fork"/>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</map>