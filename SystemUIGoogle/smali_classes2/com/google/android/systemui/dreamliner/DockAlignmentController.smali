.class public Lcom/google/android/systemui/dreamliner/DockAlignmentController;
.super Ljava/lang/Object;
.source "DockAlignmentController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dreamliner/DockAlignmentController$RegisterAlignInfoListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAlignmentState:I

.field private final mDockObserver:Lcom/google/android/systemui/dreamliner/DockObserver;

.field private final mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DockAlignmentController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger;Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mDockObserver:Lcom/google/android/systemui/dreamliner/DockObserver;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/dreamliner/DockAlignmentController;Lcom/google/android/systemui/dreamliner/DockAlignInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->onAlignInfoCallBack(Lcom/google/android/systemui/dreamliner/DockAlignInfo;)V

    return-void
.end method

.method private getAlignmentState(Lcom/google/android/systemui/dreamliner/DockAlignInfo;)I
    .locals 4

    sget-boolean v0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->DEBUG:Z

    const-string v1, "DockAlignmentController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlignInfo, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->getAlignState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", alignPct: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->getAlignPct()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    invoke-virtual {p1}, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->getAlignState()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    if-eq v0, p0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->getAlignState()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    move p0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->getAlignPct()I

    move-result p1

    if-gez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    if-ge p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :cond_5
    move p0, v2

    :cond_6
    :goto_1
    return p0
.end method

.method private onAlignInfoCallBack(Lcom/google/android/systemui/dreamliner/DockAlignInfo;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->getAlignmentState(Lcom/google/android/systemui/dreamliner/DockAlignInfo;)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mDockObserver:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->onAlignStateChanged(I)V

    sget-boolean p1, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAlignStateChanged, state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DockAlignmentController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mDockObserver:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-virtual {p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->onFanLevelChange()V

    return-void
.end method


# virtual methods
.method registerAlignInfoListener()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mWirelessCharger:Lcom/google/android/systemui/dreamliner/WirelessCharger;

    if-nez v0, :cond_0

    const-string p0, "DockAlignmentController"

    const-string v0, "wirelessCharger is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/systemui/dreamliner/DockAlignmentController$RegisterAlignInfoListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/systemui/dreamliner/DockAlignmentController$RegisterAlignInfoListener;-><init>(Lcom/google/android/systemui/dreamliner/DockAlignmentController;Lcom/google/android/systemui/dreamliner/DockAlignmentController$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->registerAlignInfo(Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;)V

    return-void
.end method
