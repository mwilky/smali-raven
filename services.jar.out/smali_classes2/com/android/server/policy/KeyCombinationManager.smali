.class public Lcom/android/server/policy/KeyCombinationManager;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
    }
.end annotation


# static fields
.field private static final COMBINE_KEY_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "KeyCombinationManager"


# instance fields
.field private final mActiveRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownTimes:Landroid/util/SparseLongArray;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseLongArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-interface {p1, v2}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private interceptKeyLocked(Landroid/view/KeyEvent;Z)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-lez v7, :cond_2

    if-lez v4, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    const-wide/16 v9, 0x96

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda7;

    invoke-direct {p0, v1, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_1
    if-nez v4, :cond_2

    return v2

    :cond_2
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-ne v7, v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, v3}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/KeyCombinationManager;I)V

    invoke-direct {p0, v1, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz v7, :cond_4

    return v1

    :cond_4
    new-instance v7, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/KeyCombinationManager;)V

    invoke-direct {p0, v7}, Lcom/android/server/policy/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz v7, :cond_8

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_5
    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseLongArray;->delete(I)V

    add-int/lit8 v1, v4, -0x1

    :goto_1
    if-ltz v1, :cond_8

    iget-object v7, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    invoke-virtual {v7, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;

    invoke-direct {v9, v7}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v8, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_8
    :goto_2
    return v2
.end method

.method static synthetic lambda$dump$5(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getKeyInterceptTimeout$3(ILcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$interceptKeyLocked$0(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel()V

    return-void
.end method

.method static synthetic lambda$isPowerKeyIntercepted$4(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .locals 1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyCombination rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mRules:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, p2, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->forAllRules(Ljava/util/ArrayList;Ljava/util/function/Consumer;)V

    return-void
.end method

.method getKeyInterceptTimeout(I)J
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/policy/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    const-wide/16 v3, 0x96

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method interceptKey(Landroid/view/KeyEvent;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKeyLocked(Landroid/view/KeyEvent;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isKeyConsumed(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isPowerKeyIntercepted()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda2;

    invoke-direct {p0, v1}, Lcom/android/server/policy/KeyCombinationManager;->forAllActiveRules(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    const/16 v4, 0x1a

    invoke-virtual {v1, v4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$interceptKeyLocked$1$KeyCombinationManager(ILcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V
    .locals 1

    invoke-virtual {p2, p1}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mActiveRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$interceptKeyLocked$2$KeyCombinationManager(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mDownTimes:Landroid/util/SparseLongArray;

    invoke-virtual {p1, v0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->shouldInterceptKeys(Landroid/util/SparseLongArray;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Performing combination rule : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCombinationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager;->mTriggeredRule:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    const/4 v0, 0x1

    return v0
.end method
