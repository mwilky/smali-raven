.class final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodPrivilegedOperationsImpl"
.end annotation


# instance fields
.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public applyImeVisibilityAsync(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/inputmethod/IIInputContentUriTokenResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IIInputContentUriTokenResultCallback;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public hideMySoftInput(ILcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;I)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$createInputContentUriToken$0$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$hideMySoftInput$3$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    return-void
.end method

.method public synthetic lambda$setInputMethod$1$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setInputMethodAndSubtype$2$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public synthetic lambda$shouldOfferSwitchingToNextInputMethod$7$InputMethodManagerService$InputMethodPrivilegedOperationsImpl()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$showMySoftInput$4$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    return-void
.end method

.method public synthetic lambda$switchToNextInputMethod$6$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$switchToPreviousInputMethod$5$InputMethodManagerService$InputMethodPrivilegedOperationsImpl()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public notifyUserActionAsync()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method public reportFullscreenModeAsync(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public reportStartInputAsync(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method

.method public setImeWindowStatusAsync(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V

    return-void
.end method

.method public setInputMethod(Ljava/lang/String;Lcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-static {p3, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/inputmethod/IBooleanResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;)V

    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IBooleanResultCallback;Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public showMySoftInput(ILcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;I)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchToNextInputMethod(ZLcom/android/internal/inputmethod/IBooleanResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Z)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IBooleanResultCallback;Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public switchToPreviousInputMethod(Lcom/android/internal/inputmethod/IBooleanResultCallback;)V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;)V

    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IBooleanResultCallback;Ljava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public updateStatusIconAsync(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method
