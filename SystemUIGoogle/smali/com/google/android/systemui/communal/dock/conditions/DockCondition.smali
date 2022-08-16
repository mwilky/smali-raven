.class public final Lcom/google/android/systemui/communal/dock/conditions/DockCondition;
.super Lcom/android/systemui/util/condition/Condition;
.source "DockCondition.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mReceiver:Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DockCondition"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/util/condition/Condition;-><init>()V

    new-instance v0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;-><init>(Lcom/google/android/systemui/communal/dock/conditions/DockCondition;)V

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->mReceiver:Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final processDockIntent(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "DockCondition"

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "null intent. ignoring"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    sget-boolean v3, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "onReceive: intent="

    invoke-static {v3}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " dock state="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " docked="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$14$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/condition/Condition;->updateCondition(Z)V

    return-void
.end method

.method public final start()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->mReceiver:Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->processDockIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->mReceiver:Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
