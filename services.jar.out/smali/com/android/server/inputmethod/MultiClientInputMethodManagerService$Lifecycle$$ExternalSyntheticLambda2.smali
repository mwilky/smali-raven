.class public final synthetic Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$Lifecycle$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$OnWorkerThreadCallback;->onStartUser(I)V

    return-void
.end method
