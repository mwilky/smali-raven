.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/PowerManager$WakeLock;

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->$r8$lambda$_I-14D8lq2ySvBk_ZJhCnNsopkU(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Ljava/lang/Integer;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method
