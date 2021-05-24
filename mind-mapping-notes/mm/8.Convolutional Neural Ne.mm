
<map>
  <node ID="root" TEXT="8.Convolutional Neural Network">
    <node TEXT="解决问题" ID="8d474f7cd1bbc8be4c44d2235a8a5204" STYLE="bubble" POSITION="right">
      <node TEXT="在全连接网络中 ，由于图像的像素值很多导致输入向量长多大，在网络中的参数会非常多，所以模型的弹性很大，容易导致过拟合" ID="6d4abc6ab8b827830ea19d0afd6ae12b" STYLE="fork"/>
    </node>
    <node TEXT="CNN解释" ID="5a6dcd1b9cd527a80d63dedf6d9d01e1" STYLE="bubble" POSITION="right">
      <node TEXT="方法一" ID="740e2102ac6a40ee3c03ec278643773a" STYLE="fork">
        <node TEXT="关键点一：部分区域。每个neuron并不需要观察完整图像才能辨识，而只需要抓住关键pattern" ID="c579ca4e04881a3da22bd54bb741efc8" STYLE="fork">
          <node TEXT="每个神经元只关心自己的receptive field就行" ID="573233f6c78b4283d7557563e9c7a44c" STYLE="fork">
            <node TEXT="receptive field直接可以重叠" ID="bb4041d3f9ed203d1212a5df197beea2" STYLE="fork"/>
            <node TEXT="receptive field大小可变化，且不一定是正方形" ID="8a57711d09a50940fa554ebfc6614482" STYLE="fork"/>
            <node TEXT="receptive field可以只考虑部分channels" ID="078b2287c00da6b0646aa8c843c4f8d1" STYLE="fork"/>
            <node TEXT="总之，receptive field是灵活变化的" ID="b6fe1462088eda4d142c01703ab82b81" STYLE="fork"/>
            <node TEXT="Typical Setting" ID="69d6f4f5d3a67888e35e451889a14558" STYLE="fork">
              <node TEXT="看所有channels" ID="5f0e1595ae1b9953b6c6b84974f85dff" STYLE="fork"/>
              <node TEXT="kernel size一般不会很大" ID="24d964684f4bf688bce81c049d3adfc4" STYLE="fork"/>
              <node TEXT="stride一般不会很大，保证receptive field有重叠（避免跳过重叠位置的pattern）" ID="4ce469cc47e7e0b2e616b1250e9fa21c" STYLE="fork"/>
              <node TEXT="padding来防止边缘位置的pattern遗漏" ID="249fbaf84f698614203ad8572c27f149" STYLE="fork"/>
              <node TEXT="receptive field在水平位置和垂直位置都要有" ID="40b4508b71dd8a60cbf738a8d62056aa" STYLE="fork"/>
              <node TEXT="综上：" ID="ff12c3e2c26f7831d795476d578f1337" STYLE="fork"/>
            </node>
          </node>
        </node>
        <node TEXT="关键点二：参数共享。相同的pattern会出现在不同的局部区域，但是没必要在每个区域都放置一个侦测功能相同的神经元" ID="9c5b1056c1f59774f040f6a5a564d92f" STYLE="fork">
          <node TEXT="参数共享是在不同区域使用相同的参数值进行计算" ID="36e80641619d06efeabccb55a46057f8" STYLE="fork">
            <node TEXT="Typical Setting" ID="cb8df6553e98908664f56ab20da31664" STYLE="fork">
              <node TEXT="每一个receptive field由一组Neuron计算" ID="9bf308f472b7a92976c515d8ef7f3a94" STYLE="fork"/>
              <node TEXT="" ID="cbe65d22a6f755620ef08c511d412f9a" STYLE="fork"/>
            </node>
          </node>
        </node>
      </node>
      <node TEXT="方法二" ID="76f389e8013874d0f4a05504e8483b5c" STYLE="fork">
        <node TEXT="卷积层里面包含很多滤波器做卷积计算" ID="f4815223601a96d971cbf16009c1503c" STYLE="fork">
          <node TEXT="利用卷积核不断移动计算实现参数共享" ID="72267f457ae4e549d00b94b2ba18bebf" STYLE="fork"/>
        </node>
      </node>
      <node TEXT="两种方法解释比较" ID="8deaf9f35dc3c24149ae91b9827df455" STYLE="fork"/>
    </node>
    <node TEXT="CNN的好处" ID="c56668cd216ab5fc7f1000967b6ddb38" STYLE="bubble" POSITION="right">
      <node TEXT="Fully Connected弹性最大，但是只要部分区域就能学习，所以引入receptive field使模型弹性变小，为了进一步减少弹性，引入parameter sharing形成convolutional layer" ID="bf3205de1d497071af44a5eb5f27f716" STYLE="fork"/>
    </node>
    <node TEXT="Pooling" ID="25b3172e11fa73c81cbf054e7f8b6323" STYLE="bubble" POSITION="right">
      <node TEXT="将图像subsampling之后，仍然能观察它是啥" ID="dc5e08600a9e0928c7401ae7bb3ac0cb" STYLE="fork">
        <node TEXT="max pooling" ID="04954b3932325fdba1d11a53f74e7313" STYLE="fork"/>
        <node TEXT="average pooling ..." ID="196523cab66020b29e4fb16928596642" STYLE="fork"/>
        <node TEXT="pooling是以往计算资源较少是采用的，对于微小目标的学习，pooling减少了可学习的数据，反而导致学习结果变差" ID="0d4728268ade70489fb434dc6ea07e0b" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="完整CNN结构" ID="6a7b086df8db0a819a4cc054236a2475" STYLE="bubble" POSITION="right">
      <node TEXT="对于分类问题，卷积和池化交替使用，在最后进行全连接后通过softmax进行分类" ID="f030917d05b9d9a60efefc52b2683205" STYLE="fork"/>
    </node>
  </node>
</map>