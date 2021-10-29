.class final Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SkinThermalStatusObserver"
.end annotation


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mStatus:I

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  SkinThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$2500(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New thermal throttling status , current thermal status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/4 v2, -0x1

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method public observe()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/DisplayModeDirector$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    if-nez v0, :cond_0

    const-string v2, "Could not observe thermal status. Service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Failed to register thermal status listener"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
