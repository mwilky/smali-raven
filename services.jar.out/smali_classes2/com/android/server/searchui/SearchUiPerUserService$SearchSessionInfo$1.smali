.class public Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;
.super Landroid/os/RemoteCallbackList;
.source "SearchUiPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/app/search/ISearchCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/app/search/ISearchCallback;)V
    .locals 3

    invoke-static {}, Lcom/android/server/searchui/SearchUiPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder died for session Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-static {v2}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->-$$Nest$fgetmSessionId(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;)Landroid/app/search/SearchSessionId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/app/search/ISearchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-static {p1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->-$$Nest$fgetmCallbacks(Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->this$0:Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;

    invoke-virtual {p0}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo;->destroy()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Landroid/app/search/ISearchCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/searchui/SearchUiPerUserService$SearchSessionInfo$1;->onCallbackDied(Landroid/app/search/ISearchCallback;)V

    return-void
.end method
