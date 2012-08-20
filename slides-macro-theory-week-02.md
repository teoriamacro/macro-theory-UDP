# Macroeconomic Theory

###Southern Spring 2012 

- Week 2: 

- Output, inflation and stabilization

- static models: K-cross, IS-LM, AD-AS

- First version: 2012/08/12, this version: 2012/08/19


# Undergrad staples

- Keynesian cross: all dependencies are on $Y_t$

- IS-LM: Adds real interest rate as an AD's determinant

- AD-AS: relax fixed aggregate price, maintains fixed *nominal* wages.

- Declining real wages imply positive slope of AS curve. 

- Declining real balances negative slope for AD curve


# Phillips Curve

- We need to look at the evolution of wages

- Phillips 1958: stable relation between (log)wage increases and level of unemployment:
   $$
   \dot{w}_t = \Phi(u_t), \quad \Phi(u^{*}) = 0, \quad \Phi' < 0
   $$
   
- $u^{*} > 0$. Why? Known as NIRU or NRU. 

- Practice drawing an $(x,y)$ diagram with $(u, \dot{w})$.

- Friedman and Phelps:
   $$
   \dot{w}_t = \pi_{t}^{e} +  \Phi(u_t), \quad \Phi(u^{*}) = 0
   $$

# Phillips Curve + AD-AS
- variables in logs
- AD: $y_t = m_t - p_t \quad$, and AS: $y_t = \xi (p_t - w_t)$
- Phillips-F-P + Okun : $\dot{w}_t =  \pi_{t}^{e} +  \phi(y_t - y^*)$
- Monetary "policy": $\dot{m}_t = \mu$
- Cagan-type expectations: $\dot{\pi}_{t}^{e} = \vartheta (\dot{p}_t - \pi_{t}^{e})$
- SS: $y_t = y^*$   and  $\dot{p}_t =\pi_{t}^{e} = \dot{w}_t=\mu=\pi^*$
- $\aleph_t := m_t - w_t$ and in SS $\aleph^* = \frac{(1+\xi)y^*}{\xi}$

# PC,AD,AS dynamics
- $p_t = \frac{m_t + \xi w_t}{1+\xi} = m_t - \frac{\xi \aleph_t}{1+\xi}$.
- $y_t = \frac{\xi(m_t - w_t)}{1+\xi} = \frac{\xi \aleph_t}{1+\xi}$.
- form a two dimensional system in $(\aleph_t, \pi_t^e)$
- $\dot{\aleph_t} = \dot{m}_t - \dot{w}_t = -(\pi_t^e - \pi^*) -  \frac{\phi \xi }{1+\xi} (\aleph_t - \aleph^*)$ 
- $\dot{\pi^e_t} =  \vartheta(\dot{p}_t - \pi_t^e)$
- $\dot{\pi^e_t} =   -\frac{\vartheta}{1+\xi}(\pi_t^e - \pi^*)  + \frac{\vartheta \phi \xi^2 }{(1+\xi)^2} (\aleph_t - \aleph^*)$
- write it in matrix form: $\dot{x}_t = A x_t$ and look at the roots of the characteristic polynomial of $A$.

# Stability

+ **Eigenvalues**: roots of the characteristic equation

+ For systems of differential equations, we need real part to be negative

+ For difference equations, we need $|\lambda| < 1$.

# Policy efectiveness

-  $y_t = m_t - p_t + \epsilon_t$
-   $y_t = \xi (p_t - w_t)$
- $w_t = p^e_t + \omega$
- $\omega$ is a 'target' real wage
- $y_t = y^* + \xi(p_t)$, with $y^* = - \omega \xi$
- Gov tries to minimize $E(y_t - \bar{y})^2$
- $(1+\xi)y_t = y^* + \xi (m_t - p^e_t) + \xi \epsilon_t$
- $(1+\xi)\bar{y} = y^* + \xi (m_t - p^e_t)$

# Policy Effectiveness 2
- $m_t = p^e_t + \bar{y} + \frac{\bar{y} - y^*}{\xi}$
- $y_t = \bar{y} + \frac{\xi \epsilon_t}{1 + \xi}$
- $p_t - p_t^e = \frac{\bar{y}-y^*}{\xi} + \frac{\epsilon_t}{1+\xi}$ (key equation)
- Next steps: different models for $p_t^e$.

# Static *price* expectations
- $p_t^e = p_{t-1}$
- $\pi_t = p_t - p_{t-1} = \frac{\bar{y}-y^*}{\xi} + \frac{\epsilon_t}{1+\xi}$
- But if sistematically $\pi_t>0$ , then $p_t^e = p_{t-1}$ is not reasonable (bc expects zero inflation)

# Static *inflation* expectations
- $\pi_t^e = \pi_{t-1}$
- equiv, $p_t^e = p_{t-1} + \pi_{t-1}$
- $\pi_t = \pi_{t-1} \frac{\bar{y}-y^*}{\xi} + \frac{\epsilon_t}{1+\xi}$
- To sustain a higer level $\bar{y}$ it needs to produce permanent increaments of inflation!
- ... and agents are still making systematic expectational mistakes

# Perfect foresight
- $p^e_t = p_t$
- if $\epsilon_t=0$:
   $$
   y_t = m_t - p_t
   $$
and
   $$
   y_t = y_t^* + \xi(p_t-p^e_t)
   $$
- Therefore, $y_t = y^*$ and $p_t=m_t - y^*$
- One will never be able to do better on average that the natural rate of activity $y^*$
- Monetary policy only influences prices, not output

# Example: Imperfect info and choice of instruments
- IS-LM log-linearized version:
    $$
    \begin{align}
    y_t & =  -b i_t + \epsilon_t \\
    m_t & - p_t -y_t = -c i_t -v_t
    \end{align}
    $$
- $\epsilon_t$ is a real demand shock and $v_t$ is money velocity shock    
- Under **full info**: 
    $$
    \begin{align}
    i_t & =  \frac{\epsilon_t}{b} \\
    m_t - p_t & = -\frac{c}{b} \epsilon_t - v_t
    \end{align}
    $$

# Optimal policy under imperfect info
- Gov do not observe $y_t,\epsilon_t,v_t,p_t$
- Does observe $m_t, i_t$
- family of monetary policies: $m_t = \chi  i_t$
- Set $\chi=0$ if you want $m_t$ to be unmoved by $i_t$
- Set $\dfrac{1}{\chi}=0$ if you want $i_t$ to be unmoved by $m_t$
- IS,LM and policy implies
    $$
    y_t = \frac{(\chi+c)\epsilon_t + b v_t}{\chi + c +b}
    $$

# Optimal policy under imperfect info, 2
- Variance of $y_t$ as a function of $\chi$:
  $$
    \text{Var}(y_t) = \frac{(\chi+c)^2\sigma^2_{\epsilon} + b^2 \sigma_{v}^2}{(\chi + c +b)^2}
  $$
- Option 1: $\chi=0$, option 2: $\chi=\infty$
  $$
    \text{V}_m = \frac{c^2\sigma^2_{\epsilon} + b^2 \sigma_{v}^2}{(c +b)^2}, \quad \text{V}_i = \sigma_v^2
  $$

# Optimal policy under imperfect info, 3
- Setting quantity of money is better than setting interest if
  $$
    b\sigma_v^2 < (2c + b)\sigma_{\epsilon}^2
  $$
- *optimal* value of $\chi$, call it $\chi^*$, minimizes $Var(y_t)$:
  $$
  \chi^* = \frac{b \sigma_{v}^2}{\sigma_{\epsilon}^2} - c
  $$
