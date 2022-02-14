.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;->INSTANCE:Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;

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

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
