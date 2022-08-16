.class public final Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;
.super Landroid/content/BroadcastReceiver;
.source "DockCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/communal/dock/conditions/DockCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/communal/dock/conditions/DockCondition;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dock/conditions/DockCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;->this$0:Lcom/google/android/systemui/communal/dock/conditions/DockCondition;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/conditions/DockCondition$1;->this$0:Lcom/google/android/systemui/communal/dock/conditions/DockCondition;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/communal/dock/conditions/DockCondition;->processDockIntent(Landroid/content/Intent;)V

    return-void
.end method
