.class public final Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;
.super Ljava/lang/Object;
.source "ComplicationLayoutEngine.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry$Parent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup$Parent;
    }
.end annotation


# instance fields
.field public final mParent:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

.field public final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    return-void
.end method


# virtual methods
.method public final removeEntry(Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$ViewEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup;->mParent:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$DirectionGroup$Parent;

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine$PositionGroup;->onEntriesChanged()V

    return-void
.end method
