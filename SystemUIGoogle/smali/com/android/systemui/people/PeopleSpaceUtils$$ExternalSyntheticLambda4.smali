.class public final synthetic Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/people/PeopleSpaceUtils$$ExternalSyntheticLambda4;

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

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/android/systemui/people/PeopleSpaceUtils;->$r8$lambda$aXvmJhRcEF_Oxv3fHy3jXzOVgmk(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
