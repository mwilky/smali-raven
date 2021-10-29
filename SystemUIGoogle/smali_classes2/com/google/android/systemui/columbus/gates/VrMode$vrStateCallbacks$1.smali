.class public final Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "VrMode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/VrMode;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/VrMode;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/VrMode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/VrMode;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/VrMode;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/gates/VrMode;->access$setInVrMode$p(Lcom/google/android/systemui/columbus/gates/VrMode;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/VrMode$vrStateCallbacks$1;->this$0:Lcom/google/android/systemui/columbus/gates/VrMode;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/VrMode;->access$updateBlocking(Lcom/google/android/systemui/columbus/gates/VrMode;)V

    return-void
.end method
