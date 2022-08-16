.class public final Lcom/android/systemui/qs/FgsManagerController$logEvent$1;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $event:I

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $timeLogged:J

.field public final synthetic $timeStarted:J

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;Ljava/lang/String;IIJJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$userId:I

    iput p4, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$event:I

    iput-wide p5, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$timeLogged:J

    iput-wide p7, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$timeStarted:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerController;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$userId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1c2

    iget v2, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$event:I

    iget-wide v3, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$timeLogged:J

    iget-wide v5, p0, Lcom/android/systemui/qs/FgsManagerController$logEvent$1;->$timeStarted:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0, v3, v4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
