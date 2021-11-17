.class public Lcom/android/systemui/statusbar/phone/ClockController;
.super Ljava/lang/Object;
.source "ClockController.java"


# instance fields
.field public mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

.field public mRightClock:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 16
    const-string v0, "clock"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 17
    const-string v0, "clock_right"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClockController;->updateActiveClock()V

    .line 19
    return-void
.end method


# virtual methods
.method public getClock()Lcom/android/systemui/statusbar/policy/Clock;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method public hideClock()V
    .registers 3

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 62
    return-void
.end method

.method public updateActiveClock()V
    .registers 5

    .line 22
    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I

    .line 23
    .local v0, "i":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 24
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 25
    if-eqz v3, :cond_f

    .line 26
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 28
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_51

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_51

    .line 31
    :cond_17
    if-ne v0, v1, :cond_2c

    .line 32
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 33
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v3, :cond_24

    .line 34
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 36
    :cond_24
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v2, :cond_51

    .line 37
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_51

    .line 39
    :cond_2c
    const/4 v3, 0x2

    if-ne v0, v3, :cond_41

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 41
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_39

    .line 42
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 44
    :cond_39
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_51

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    goto :goto_51

    .line 48
    :cond_41
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mLeftClock:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mActiveClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 49
    if-eqz v3, :cond_4a

    .line 50
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 52
    :cond_4a
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClockController;->mRightClock:Lcom/android/systemui/statusbar/policy/Clock;

    if-eqz v1, :cond_51

    .line 53
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    .line 56
    :cond_51
    :goto_51
    return-void
.end method
