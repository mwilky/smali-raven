.class public final synthetic Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/translation/RemoteTranslationService$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroid/service/translation/ITranslationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/translation/ITranslationService;

    move-result-object p1

    return-object p1
.end method
