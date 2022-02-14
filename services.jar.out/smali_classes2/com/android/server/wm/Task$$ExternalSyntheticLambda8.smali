.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

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

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setAppTimeTracker(Lcom/android/server/am/AppTimeTracker;)V

    return-void
.end method
