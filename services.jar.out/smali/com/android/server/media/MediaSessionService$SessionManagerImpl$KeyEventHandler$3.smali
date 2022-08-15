.class public Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->createDoubleTapRunnable(Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZZZ)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

.field public final synthetic val$asSystemService:Z

.field public final synthetic val$doubleTapOverridden:Z

.field public final synthetic val$keyEvent:Landroid/view/KeyEvent;

.field public final synthetic val$musicOnly:Z

.field public final synthetic val$needWakeLock:Z

.field public final synthetic val$opPackageName:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pid:I

.field public final synthetic val$singleTapOverridden:Z

.field public final synthetic val$stream:I

.field public final synthetic val$uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;ZLandroid/view/KeyEvent;ZLjava/lang/String;IIZZLjava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iput-boolean p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$doubleTapOverridden:Z

    iput-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iput-boolean p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$singleTapOverridden:Z

    iput-object p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iput p7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iput-boolean p8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iput-boolean p9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iput-object p10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iput-boolean p12, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->-$$Nest$mresetMultiTapTrackingLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;)V

    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$doubleTapOverridden:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaKeyDispatcher;->onDoubleTap(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$singleTapOverridden:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaKeyDispatcher;->onSingleTap(Landroid/view/KeyEvent;)V

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->-$$Nest$fgetmCustomMediaKeyDispatcher(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaKeyDispatcher;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v1, v0}, Lcom/android/server/media/MediaKeyDispatcher;->onSingleTap(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iget v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iget-boolean v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iget-object v7, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iget-boolean v8, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iget-object v9, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iget v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iget-boolean v11, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    invoke-static/range {v2 .. v11}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->-$$Nest$mdispatchDownAndUpKeyEventsLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    iget-object v12, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->this$2:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;

    iget-object v13, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$packageName:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$pid:I

    iget v15, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$uid:I

    iget-boolean v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$asSystemService:Z

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$keyEvent:Landroid/view/KeyEvent;

    iget-boolean v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$needWakeLock:Z

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$opPackageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$stream:I

    iget-boolean v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler$3;->val$musicOnly:Z

    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v0

    invoke-static/range {v12 .. v21}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;->-$$Nest$mdispatchDownAndUpKeyEventsLocked(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventHandler;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLjava/lang/String;IZ)V

    :goto_0
    return-void
.end method
