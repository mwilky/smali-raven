.class public final Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SkinThermalStatusObserver"
.end annotation


# instance fields
.field public final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field public final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field public mStatus:I

.field public final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;)V
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
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "  SkinThermalStatusObserver:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLoggingEnabled(Lcom/android/server/display/DisplayModeDirector;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New thermal throttling status , current thermal status = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayModeDirector"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p1, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mStatus:I

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/4 v0, -0x1

    const/16 v1, 0xa

    invoke-interface {p0, v0, v1, p1}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method public observe()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/DisplayModeDirector$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    if-nez v0, :cond_0

    const-string p0, "Could not observe thermal status. Service not available"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to register thermal status listener"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
