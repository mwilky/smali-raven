.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;-><init>()V

    sput-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda20;

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

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    invoke-static {p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$registerRouter2Locked$3(Ljava/lang/Object;Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;)V

    return-void
.end method
