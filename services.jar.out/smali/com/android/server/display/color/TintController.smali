.class abstract Lcom/android/server/display/color/TintController;
.super Ljava/lang/Object;
.source "TintController.java"


# instance fields
.field private mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

.field private mIsActivated:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static matrixToString([FI)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    rem-int v4, v3, p1

    if-nez v4, :cond_1

    const-string v4, "\n      "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-array v4, v2, [Ljava/lang/Object;

    aget v5, p0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%9.6f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid arguments when formatting matrix to string, matrix is null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " columns: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public cancelAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public endAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    :cond_0
    return-void
.end method

.method public getAnimator()Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    return-object v0
.end method

.method public abstract getLevel()I
.end method

.method public abstract getMatrix()[F
.end method

.method public isActivated()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivatedStateNotSet()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public setActivated(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mIsActivated:Ljava/lang/Boolean;

    return-void
.end method

.method public setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/color/TintController;->mAnimator:Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    return-void
.end method

.method public abstract setMatrix(I)V
.end method

.method public abstract setUp(Landroid/content/Context;Z)V
.end method
