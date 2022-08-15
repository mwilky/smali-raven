.class public final Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
.super Ljava/lang/Object;
.source "EconomyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomyManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBill"
.end annotation


# static fields
.field public static final sAnticipatedActionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAnticipatedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;"
        }
    .end annotation
.end field

.field public final mHashCode:I


# direct methods
.method public static synthetic $r8$lambda$rQLXKFtEQhNPJHvx39TTIhGe4o4(Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->lambda$static$0(Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->sAnticipatedActionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p1, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->sAnticipatedActionComparator:Ljava/util/Comparator;

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-virtual {v1}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mHashCode:I

    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;)I
    .locals 0

    iget p0, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    iget-object p0, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAnticipatedActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mHashCode:I

    return p0
.end method
