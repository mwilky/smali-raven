.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;,
        Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;
    }
.end annotation


# static fields
.field public static sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mApplicationItemsComparator:Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

.field public mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public final mContext:Landroid/view/ContextThemeWrapper;

.field public final mDialogCloseListener:Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

.field public final mHandler:Landroid/os/Handler;

.field public mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field public mKeyboardShortcutsDialog:Landroid/app/AlertDialog;

.field public final mModifierDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mModifierList:[I

.field public final mModifierNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/IPackageManager;

.field public final mSpecialCharacterDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final mSpecialCharacterNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    new-instance v6, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    const v7, 0x1030223

    invoke-direct {v6, v1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    const v0, 0x7f13036c

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f130362

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x4

    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f130369

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x13

    invoke-virtual {v2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f130366

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x14

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f130367

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x15

    invoke-virtual {v2, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f130368

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x16

    invoke-virtual {v2, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f130365

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v11, 0x17

    invoke-virtual {v2, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x38

    const-string v11, "."

    invoke-virtual {v2, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f13037b

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x3d

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f13037a

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x3e

    invoke-virtual {v2, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v0, 0x7f13036a

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x42

    invoke-virtual {v2, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f130363

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v14, 0x43

    invoke-virtual {v2, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f130370

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x55

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f130373

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x56

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f13036f

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x57

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f130371

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x58

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f130372

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x59

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f13036e

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x5a

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f130379

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x5c

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v12, 0x7f130378

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0x5d

    invoke-virtual {v2, v15, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    const-string v16, "A"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const v9, 0x7f130364

    invoke-virtual {v1, v9, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v8, 0x60

    invoke-virtual {v2, v8, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "B"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x61

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "C"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x62

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "X"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x63

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "Y"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x64

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "Z"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x65

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "L1"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x66

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "R1"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x67

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "L2"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x68

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "R2"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x69

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "Start"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x6c

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "Select"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x6d

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "Mode"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x6e

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v8, 0x7f13036b

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x70

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x6f

    const-string v9, "Esc"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x78

    const-string v9, "SysRq"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x79

    const-string v9, "Break"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x74

    const-string v9, "Scroll Lock"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v8, 0x7f130375

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x7a

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v8, 0x7f130374

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x7b

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v8, 0x7f13036d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x7c

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x83

    const-string v9, "F1"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x84

    const-string v9, "F2"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x85

    const-string v9, "F3"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x86

    const-string v9, "F4"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x87

    const-string v9, "F5"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x88

    const-string v9, "F6"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x89

    const-string v9, "F7"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x8a

    const-string v9, "F8"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x8b

    const-string v9, "F9"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x8c

    const-string v9, "F10"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x8d

    const-string v9, "F11"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0x8e

    const-string v9, "F12"

    invoke-virtual {v2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v8, 0x7f130376

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8f

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v9, "0"

    aput-object v9, v8, v17

    const v9, 0x7f130377

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x90

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "1"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x91

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "2"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x92

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "3"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x93

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "4"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x94

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "5"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x95

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "6"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x96

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "7"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x97

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "8"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x98

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "9"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x99

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "/"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x9a

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "*"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x9b

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "-"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x9c

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v15, "+"

    aput-object v15, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v15, 0x9d

    invoke-virtual {v2, v15, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v11, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x9e

    invoke-virtual {v2, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    const-string v11, ","

    aput-object v11, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x9f

    invoke-virtual {v2, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v17

    invoke-virtual {v1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0xa0

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v8, "="

    aput-object v8, v0, v17

    invoke-virtual {v1, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0xa1

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v8, "("

    aput-object v8, v0, v17

    invoke-virtual {v1, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0xa2

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v8, ")"

    aput-object v8, v0, v17

    invoke-virtual {v1, v9, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0xa3

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd3

    const-string/jumbo v8, "\u534a\u89d2/\u5168\u89d2"

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd4

    const-string/jumbo v8, "\u82f1\u6570"

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd5

    const-string/jumbo v8, "\u7121\u5909\u63db"

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd6

    const-string/jumbo v8, "\u5909\u63db"

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0xd7

    const-string/jumbo v8, "\u304b\u306a"

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/high16 v0, 0x10000

    const-string v2, "Meta"

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x1000

    const-string v8, "Ctrl"

    invoke-virtual {v3, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    const-string v8, "Alt"

    invoke-virtual {v3, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "Shift"

    invoke-virtual {v3, v12, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "Sym"

    invoke-virtual {v3, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v2, 0x8

    const-string v6, "Fn"

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f08056e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v14, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f080570

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f080574

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f080573

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v4, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f08056f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f080571

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v2, 0x7f080572

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10000
        0x1000
        0x2
        0x1
        0x4
        0x8
    .end array-data
.end method

.method public static dismiss()V
    .locals 4

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    iput-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/AlertDialog;

    :cond_0
    sput-object v3, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2

    const/16 v0, 0x1f4

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 6

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "KeyboardShortcuts"

    const-string v0, "PackageManagerService is dead"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    move-object p0, p2

    :goto_1
    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2
.end method

.method public final showKeyboardShortcuts(I)V
    .locals 6

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InputDevice;->getId()I

    move-result v5

    if-eq v5, v1, :cond_1

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    return-void
.end method
