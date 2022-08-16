.class public final Lcom/google/android/systemui/elmyra/gates/VrMode$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "VrMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/VrMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/VrMode;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/VrMode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/VrMode$1;->this$0:Lcom/google/android/systemui/elmyra/gates/VrMode;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVrStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode$1;->this$0:Lcom/google/android/systemui/elmyra/gates/VrMode;

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mInVrMode:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/VrMode;->mInVrMode:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_0
    return-void
.end method
