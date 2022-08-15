.class public Lcom/android/server/slice/PinnedSliceState$ListenerInfo;
.super Ljava/lang/Object;
.source "PinnedSliceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/PinnedSliceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenerInfo"
.end annotation


# instance fields
.field public callingPid:I

.field public callingUid:I

.field public hasPermission:Z

.field public pkg:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/slice/PinnedSliceState;

.field public token:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgettoken(Lcom/android/server/slice/PinnedSliceState$ListenerInfo;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/slice/PinnedSliceState;Landroid/os/IBinder;Ljava/lang/String;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->this$0:Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->pkg:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->hasPermission:Z

    iput p5, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->callingUid:I

    iput p6, p0, Lcom/android/server/slice/PinnedSliceState$ListenerInfo;->callingPid:I

    return-void
.end method
