.class Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;
.super Ljava/util/ArrayDeque;
.source "EdgeBackGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLength:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;->mLength:I

    return-void
.end method


# virtual methods
.method log(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$LogArray;->mLength:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
