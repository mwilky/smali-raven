.class final Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;
.super Landroid/view/translation/ITranslationServiceCallback$Stub;
.source "TranslationManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/translation/TranslationManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TranslationServiceRemoteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-direct {p0}, Landroid/view/translation/ITranslationServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/translation/TranslationManagerServiceImpl;Lcom/android/server/translation/TranslationManagerServiceImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;-><init>(Lcom/android/server/translation/TranslationManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public updateTranslationCapability(Landroid/view/translation/TranslationCapability;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "TranslationManagerServiceImpl"

    const-string v1, "received a null TranslationCapability from TranslationService."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$TranslationServiceRemoteCallback;->this$0:Lcom/android/server/translation/TranslationManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/translation/TranslationManagerServiceImpl;->access$100(Lcom/android/server/translation/TranslationManagerServiceImpl;Landroid/view/translation/TranslationCapability;)V

    return-void
.end method
