.class Lcom/a/a/c/e;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/e$b;,
        Lcom/a/a/c/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/c/e$b;

.field private final b:Landroid/app/AlertDialog$Builder;


# direct methods
.method private constructor <init>(Landroid/app/AlertDialog$Builder;Lcom/a/a/c/e$b;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/a/a/c/e;->a:Lcom/a/a/c/e$b;

    .line 133
    iput-object p1, p0, Lcom/a/a/c/e;->b:Landroid/app/AlertDialog$Builder;

    .line 134
    return-void
.end method

.method private static a(FI)I
    .locals 1

    .prologue
    .line 125
    int-to-float v0, p1

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;
    .locals 7

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 107
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/a/a/c/e;->a(FI)I

    move-result v1

    .line 109
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 110
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 111
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v3, 0x1030044

    invoke-virtual {v2, p0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 117
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 118
    const/16 v3, 0xe

    invoke-static {v0, v3}, Lcom/a/a/c/e;->a(FI)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lcom/a/a/c/e;->a(FI)I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lcom/a/a/c/e;->a(FI)I

    move-result v5

    const/16 v6, 0xc

    invoke-static {v0, v6}, Lcom/a/a/c/e;->a(FI)I

    move-result v0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 121
    return-object v1
.end method

.method public static a(Landroid/app/Activity;Lio/fabric/sdk/android/services/e/o;Lcom/a/a/c/e$a;)Lcom/a/a/c/e;
    .locals 6

    .prologue
    .line 50
    new-instance v0, Lcom/a/a/c/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/c/e$b;-><init>(Lcom/a/a/c/e$1;)V

    .line 51
    new-instance v1, Lcom/a/a/c/p;

    invoke-direct {v1, p0, p1}, Lcom/a/a/c/p;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/e/o;)V

    .line 52
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v1}, Lcom/a/a/c/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/a/a/c/e;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/ScrollView;

    move-result-object v3

    .line 56
    new-instance v4, Lcom/a/a/c/e$1;

    invoke-direct {v4, v0}, Lcom/a/a/c/e$1;-><init>(Lcom/a/a/c/e$b;)V

    .line 67
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/a/a/c/p;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/a/a/c/p;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    iget-boolean v3, p1, Lio/fabric/sdk/android/services/e/o;->d:Z

    if-eqz v3, :cond_0

    .line 73
    new-instance v3, Lcom/a/a/c/e$2;

    invoke-direct {v3, v0}, Lcom/a/a/c/e$2;-><init>(Lcom/a/a/c/e$b;)V

    .line 81
    invoke-virtual {v1}, Lcom/a/a/c/p;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_0
    iget-boolean v3, p1, Lio/fabric/sdk/android/services/e/o;->f:Z

    if-eqz v3, :cond_1

    .line 86
    new-instance v3, Lcom/a/a/c/e$3;

    invoke-direct {v3, p2, v0}, Lcom/a/a/c/e$3;-><init>(Lcom/a/a/c/e$a;Lcom/a/a/c/e$b;)V

    .line 95
    invoke-virtual {v1}, Lcom/a/a/c/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    :cond_1
    new-instance v1, Lcom/a/a/c/e;

    invoke-direct {v1, v2, v0}, Lcom/a/a/c/e;-><init>(Landroid/app/AlertDialog$Builder;Lcom/a/a/c/e$b;)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/a/a/c/e;->b:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 141
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/a/a/c/e;->a:Lcom/a/a/c/e$b;

    invoke-virtual {v0}, Lcom/a/a/c/e$b;->b()V

    .line 148
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/a/a/c/e;->a:Lcom/a/a/c/e$b;

    invoke-virtual {v0}, Lcom/a/a/c/e$b;->a()Z

    move-result v0

    return v0
.end method
