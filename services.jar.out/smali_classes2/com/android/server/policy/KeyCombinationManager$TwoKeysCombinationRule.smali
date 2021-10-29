.class abstract Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TwoKeysCombinationRule"
.end annotation


# instance fields
.field private mKeyCode1:I

.field private mKeyCode2:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    iput p2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    return-void
.end method


# virtual methods
.method abstract cancel()V
.end method

.method abstract execute()V
.end method

.method preCondition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method shouldInterceptKey(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->preCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldInterceptKeys(Landroid/util/SparseLongArray;)Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    invoke-virtual {p1, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode1:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->mKeyCode2:I

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
