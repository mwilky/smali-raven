.class public interface abstract Lcom/android/launcher3/util/FlagOp;
.super Ljava/lang/Object;
.source "FlagOp.java"


# static fields
.field public static final NO_OP:Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public abstract apply(I)I
.end method

.method public setFlag(Z)Lcom/android/launcher3/util/FlagOp;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/FlagOp;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/FlagOp$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/util/FlagOp;)V

    :goto_0
    return-object p1
.end method
