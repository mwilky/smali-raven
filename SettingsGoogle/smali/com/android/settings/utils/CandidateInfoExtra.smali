.class public Lcom/android/settings/utils/CandidateInfoExtra;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "CandidateInfoExtra.java"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/utils/CandidateInfoExtra;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/settings/utils/CandidateInfoExtra;->mSummary:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/settings/utils/CandidateInfoExtra;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/CandidateInfoExtra;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/CandidateInfoExtra;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public loadSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/utils/CandidateInfoExtra;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method
