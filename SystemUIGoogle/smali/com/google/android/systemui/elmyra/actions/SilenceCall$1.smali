.class public final Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;
.super Ljava/lang/Object;
.source "SilenceCall.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/SilenceCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;->this$0:Lcom/google/android/systemui/elmyra/actions/SilenceCall;

    iget-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_1
    return-void
.end method
