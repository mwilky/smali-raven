.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;-><init>()V

    sput-object v0, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;->INSTANCE:Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda21;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->lambda$getOrCreateUserRecordLocked$25(Ljava/lang/Object;)V

    return-void
.end method
