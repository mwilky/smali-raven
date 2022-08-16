.class public final Lcom/android/systemui/model/SysUiState;
.super Ljava/lang/Object;
.source "SysUiState.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/model/SysUiState$SysUiStateCallback;
    }
.end annotation


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public mFlags:I

.field public mFlagsToClear:I

.field public mFlagsToSet:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    iput v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    return-void
.end method


# virtual methods
.method public final commitUpdate(I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Ignoring flag update for display: "

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "SysUiState"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    iget v0, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    or-int/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    not-int v1, v1

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/systemui/model/SysUiState$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iput v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p2, "SysUiState state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mSysUiStateFlags="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    new-instance v1, Ljava/util/StringJoiner;

    const-string/jumbo v2, "|"

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    and-int/lit8 v2, v0, 0x1

    const-string v3, ""

    if-eqz v2, :cond_0

    const-string/jumbo v2, "screen_pinned"

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    const-string/jumbo v2, "overview_disabled"

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_2

    const-string v2, "home_disabled"

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_3

    const-string/jumbo v2, "search_disabled"

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    const-string v2, "navbar_hidden"

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_5

    const-string v2, "notif_visible"

    goto :goto_5

    :cond_5
    move-object v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_6

    const-string/jumbo v2, "qs_visible"

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_7

    const-string v2, "keygrd_visible"

    goto :goto_7

    :cond_7
    move-object v2, v3

    :goto_7
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_8

    const-string v2, "keygrd_occluded"

    goto :goto_8

    :cond_8
    move-object v2, v3

    :goto_8
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_9

    const-string v2, "bouncer_visible"

    goto :goto_9

    :cond_9
    move-object v2, v3

    :goto_9
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_a

    const-string v2, "dialog_showing"

    goto :goto_a

    :cond_a
    move-object v2, v3

    :goto_a
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_b

    const-string v2, "a11y_click"

    goto :goto_b

    :cond_b
    move-object v2, v3

    :goto_b
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_c

    const-string v2, "a11y_long_click"

    goto :goto_c

    :cond_c
    move-object v2, v3

    :goto_c
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_d

    const-string/jumbo v2, "tracing"

    goto :goto_d

    :cond_d
    move-object v2, v3

    :goto_d
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_e

    const-string v2, "asst_gesture_constrain"

    goto :goto_e

    :cond_e
    move-object v2, v3

    :goto_e
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_f

    const-string v2, "bubbles_expanded"

    goto :goto_f

    :cond_f
    move-object v2, v3

    :goto_f
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_10

    const-string/jumbo v2, "one_handed_active"

    goto :goto_10

    :cond_10
    move-object v2, v3

    :goto_10
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v2, 0x20000

    and-int v4, v0, v2

    if-eqz v4, :cond_11

    const-string v4, "allow_gesture"

    goto :goto_11

    :cond_11
    move-object v4, v3

    :goto_11
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    const-string v4, "ime_visible"

    goto :goto_12

    :cond_12
    move-object v4, v3

    :goto_12
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x80000

    and-int/2addr v4, v0

    if-eqz v4, :cond_13

    const-string v4, "magnification_overlap"

    goto :goto_13

    :cond_13
    move-object v4, v3

    :goto_13
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_14

    const-string v4, "ime_switcher_showing"

    goto :goto_14

    :cond_14
    move-object v4, v3

    :goto_14
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_15

    const-string v4, "device_dozing"

    goto :goto_15

    :cond_15
    move-object v4, v3

    :goto_15
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_16

    const-string v4, "back_disabled"

    goto :goto_16

    :cond_16
    move-object v4, v3

    :goto_16
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_17

    const-string v4, "bubbles_mange_menu_expanded"

    goto :goto_17

    :cond_17
    move-object v4, v3

    :goto_17
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_18

    const-string v4, "immersive_mode"

    goto :goto_18

    :cond_18
    move-object v4, v3

    :goto_18
    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/high16 v4, 0x2000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_19

    const-string/jumbo v3, "vis_win_showing"

    :cond_19
    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    backGestureDisabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    invoke-static {p2}, Landroidx/preference/R$string;->isBackGestureDisabled(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "    assistantGestureDisabled="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/model/SysUiState;->mFlags:I

    and-int p2, p0, v2

    if-eqz p2, :cond_1a

    and-int/lit8 p0, p0, -0x3

    :cond_1a
    and-int/lit16 p2, p0, 0xc0b

    const/4 v0, 0x1

    if-eqz p2, :cond_1b

    goto :goto_19

    :cond_1b
    and-int/lit8 p2, p0, 0x4

    if-eqz p2, :cond_1c

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_1c

    goto :goto_19

    :cond_1c
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public final setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToSet:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/model/SysUiState;->mFlagsToClear:I

    :goto_0
    return-void
.end method
