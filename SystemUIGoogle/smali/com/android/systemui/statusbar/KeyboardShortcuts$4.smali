.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts$4;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field public final synthetic val$keyboardShortcutGroups:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->val$keyboardShortcutGroups:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;->val$keyboardShortcutGroups:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0e00cb

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0337

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const v8, 0x7f0e00ca

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v9, v9}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v12, v10

    move-object v13, v4

    move v10, v9

    :goto_0
    if-ge v10, v7, :cond_15

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/KeyboardShortcutGroup;

    const v5, 0x7f0e00c7

    invoke-virtual {v6, v5, v13, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->isSystemGroup()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v14, 0x1010435

    invoke-static {v8, v14}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    goto :goto_1

    :cond_0
    iget-object v8, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/view/ContextThemeWrapper;

    const v14, 0x7f0600f2

    invoke-virtual {v8, v14}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v5, 0x7f0e00c8

    invoke-virtual {v6, v5, v13, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v14, v9

    :goto_2
    if-ge v14, v8, :cond_13

    invoke-virtual {v15}, Landroid/view/KeyboardShortcutGroup;->getItems()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/KeyboardShortcutInfo;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getModifiers()I

    move-result v16

    move-object/from16 v17, v0

    if-nez v16, :cond_1

    move-object/from16 v21, v2

    move-object/from16 v18, v4

    move/from16 v19, v8

    move-object/from16 v20, v15

    goto :goto_5

    :cond_1
    move-object/from16 v18, v4

    const/4 v0, 0x0

    :goto_3
    iget-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierList:[I

    move/from16 v19, v8

    array-length v8, v4

    if-ge v0, v8, :cond_3

    aget v4, v4, v0

    and-int v8, v16, v4

    if-eqz v8, :cond_2

    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    move-object/from16 v20, v15

    iget-object v15, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierNames:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mModifierDrawables:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {v8, v2, v15}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    not-int v2, v4

    and-int v2, v16, v2

    move/from16 v16, v2

    goto :goto_4

    :cond_2
    move-object/from16 v21, v2

    move-object/from16 v20, v15

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v19

    move-object/from16 v15, v20

    move-object/from16 v2, v21

    goto :goto_3

    :cond_3
    move-object/from16 v21, v2

    move-object/from16 v20, v15

    if-eqz v16, :cond_4

    const/4 v9, 0x0

    :cond_4
    :goto_5
    const-string v0, "KeyboardShortcuts"

    if-nez v9, :cond_5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getBaseCharacter()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterDrawables:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    iget-object v4, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_7

    :cond_7
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mSpecialCharacterNames:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_6

    :cond_8
    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mBackupKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getKeycode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    :goto_6
    move-object v4, v2

    const/4 v2, 0x0

    :goto_7
    if-eqz v4, :cond_b

    new-instance v8, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    invoke-direct {v8, v2, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    const-string v2, "Keyboard Shortcut does not have a text representation, skipping."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v9, 0x0

    :goto_9
    if-nez v9, :cond_d

    const-string v2, "Keyboard Shortcut contains unsupported keys, skipping."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v24, v1

    move-object/from16 v25, v3

    move/from16 v26, v10

    move/from16 v23, v12

    const v1, 0x7f0e00ca

    goto/16 :goto_d

    :cond_d
    const v0, 0x7f0e00c5

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_e

    const v4, 0x7f0b0338

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    const v2, 0x7f0b033a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v8, 0x14

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    const v2, 0x7f0b0339

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v4, :cond_12

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;

    iget-object v15, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_10

    const v15, 0x7f0e00c9

    move/from16 v16, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v15, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v22, v9

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v23, v12

    iget-object v12, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    move-object/from16 v25, v3

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    move/from16 v26, v10

    const/4 v10, 0x0

    invoke-virtual {v12, v10, v10, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    iget-object v3, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_b

    :cond_10
    move-object/from16 v24, v1

    move-object/from16 v25, v3

    move/from16 v16, v4

    move-object/from16 v22, v9

    move/from16 v26, v10

    move/from16 v23, v12

    iget-object v1, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    if-eqz v1, :cond_11

    const v1, 0x7f0e00ca

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setMinimumWidth(I)V

    iget-object v3, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;

    iget-object v9, v13, Lcom/android/systemui/statusbar/KeyboardShortcuts$StringDrawableContainer;->mString:Ljava/lang/String;

    invoke-direct {v3, v9}, Lcom/android/systemui/statusbar/KeyboardShortcuts$ShortcutKeyAccessibilityDelegate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_11
    :goto_b
    const v1, 0x7f0e00ca

    :goto_c
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v16

    move-object/from16 v9, v22

    move/from16 v12, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move/from16 v10, v26

    goto/16 :goto_a

    :cond_12
    move-object/from16 v24, v1

    move-object/from16 v25, v3

    move/from16 v26, v10

    move/from16 v23, v12

    const v1, 0x7f0e00ca

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_d
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-object v13, v4

    move/from16 v8, v19

    move-object/from16 v15, v20

    move-object/from16 v2, v21

    move/from16 v12, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move/from16 v10, v26

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v17, v0

    move-object/from16 v24, v1

    move-object/from16 v21, v2

    move-object/from16 v25, v3

    move-object/from16 v18, v4

    move/from16 v26, v10

    move/from16 v23, v12

    const v1, 0x7f0e00ca

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v7, -0x1

    move/from16 v9, v26

    if-ge v9, v0, :cond_14

    const v0, 0x7f0e00c6

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_e

    :cond_14
    const/4 v2, 0x0

    :goto_e
    add-int/lit8 v10, v9, 0x1

    move v8, v1

    move v9, v2

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v21

    move/from16 v12, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_15
    move-object/from16 v24, v1

    move-object v0, v2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1305e0

    move-object/from16 v2, v24

    iget-object v3, v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mDialogCloseListener:Lcom/android/systemui/statusbar/KeyboardShortcuts$1;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    sget-object v1, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->sInstance:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    if-eqz v0, :cond_16

    iget-object v0, v2, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mKeyboardShortcutsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_16
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
