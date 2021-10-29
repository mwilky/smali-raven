.class Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

.field final synthetic val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->this$0:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$1;->val$userIdToInputMethodInfoMapper:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$UserToInputMethodInfoMap;->getAsList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideCurrentInputMethod(I)V
    .locals 0

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p3}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MultiClientInputMethodManagerService"

    const-string v2, "Failed to call onInlineSuggestionsUnsupported."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 0

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    return-void
.end method

.method public removeImeSurface()V
    .locals 0

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method

.method public setInteractive(Z)V
    .locals 0

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    const/4 v0, 0x0

    return v0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;->access$200()V

    const/4 v0, 0x0

    return v0
.end method

.method public updateImeWindowStatus(Z)V
    .locals 0

    return-void
.end method
