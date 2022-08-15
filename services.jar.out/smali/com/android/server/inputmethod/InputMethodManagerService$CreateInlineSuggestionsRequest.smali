.class public final Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateInlineSuggestionsRequest"
.end annotation


# instance fields
.field public final mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

.field public final mPackageName:Ljava/lang/String;

.field public final mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mRequestInfo:Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$CreateInlineSuggestionsRequest;->mPackageName:Ljava/lang/String;

    return-void
.end method
