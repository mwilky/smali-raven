.class Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/PersistentFocusWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSelectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState$1;

    invoke-direct {v0}, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState$1;-><init>()V

    sput-object v0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "superState"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget p0, p0, Landroidx/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
