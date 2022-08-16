.class Landroidx/slice/widget/DisplayedListItems;
.super Ljava/lang/Object;
.source "DisplayedListItems.java"


# instance fields
.field private final mDisplayedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mHiddenItemCount:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/DisplayedListItems;->mDisplayedItems:Ljava/util/List;

    iput p2, p0, Landroidx/slice/widget/DisplayedListItems;->mHiddenItemCount:I

    return-void
.end method


# virtual methods
.method getDisplayedItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/DisplayedListItems;->mDisplayedItems:Ljava/util/List;

    return-object p0
.end method

.method getHiddenItemCount()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/DisplayedListItems;->mHiddenItemCount:I

    return p0
.end method
