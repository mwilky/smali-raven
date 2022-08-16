.class public final Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;
.super Landroid/database/ContentObserver;
.source "NudgeToSetupDreamCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    sget-boolean p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "NudgeToSetupDream"

    const-string v0, "onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    iget-object v0, p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamSelectedProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->mDreamSet:Z

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback$1;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;->updatePresentation()V

    return-void
.end method
