.class public Lcom/android/server/statusbar/StatusBarManagerService$3;
.super Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->requestAddTile(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;ILcom/android/internal/statusbar/IAddTileResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field public final synthetic val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

.field public final synthetic val$componentName:Landroid/content/ComponentName;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ILandroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/statusbar/IAddTileResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-direct {p0}, Lcom/android/internal/statusbar/IAddTileResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTileRequest(I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/TileRequestTracker;->addDenial(ILandroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fgetmTileRequestTracker(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/statusbar/TileRequestTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/TileRequestTracker;->resetRequests(ILandroid/content/ComponentName;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$mclearTileAddRequest(Lcom/android/server/statusbar/StatusBarManagerService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$callback:Lcom/android/internal/statusbar/IAddTileResultCallback;

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IAddTileResultCallback;->onTileRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "StatusBarManagerService"

    const-string v0, "requestAddTile - callback"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-void
.end method
