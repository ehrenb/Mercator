.class public Landroid/support/v7/a/d$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/a/c$a;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/a/d;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;I)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Landroid/support/v7/a/c$a;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 323
    invoke-static {p1, p2}, Landroid/support/v7/a/d;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/support/v7/a/c$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    .line 324
    iput p2, p0, Landroid/support/v7/a/d$a;->b:I

    .line 325
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v0, v0, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/c$a;->f:Ljava/lang/CharSequence;

    .line 347
    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/c$a;->i:Ljava/lang/CharSequence;

    .line 453
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 454
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->p:Landroid/content/DialogInterface$OnCancelListener;

    .line 550
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    .line 570
    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->d:Landroid/graphics/drawable/Drawable;

    .line 425
    return-object p0
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->g:Landroid/view/View;

    .line 378
    return-object p0
.end method

.method public a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->t:Landroid/widget/ListAdapter;

    .line 609
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 610
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->f:Ljava/lang/CharSequence;

    .line 357
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->i:Ljava/lang/CharSequence;

    .line 466
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->j:Landroid/content/DialogInterface$OnClickListener;

    .line 467
    return-object p0
.end method

.method public a(Z)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-boolean p1, v0, Landroid/support/v7/a/c$a;->o:Z

    .line 529
    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->s:[Ljava/lang/CharSequence;

    .line 781
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p3, v0, Landroid/support/v7/a/c$a;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 782
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput p2, v0, Landroid/support/v7/a/c$a;->F:I

    .line 783
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/a/c$a;->E:Z

    .line 784
    return-object p0
.end method

.method public b(I)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/c$a;->h:Ljava/lang/CharSequence;

    .line 388
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/c$a;->k:Ljava/lang/CharSequence;

    .line 479
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 480
    return-object p0
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 851
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->w:Landroid/view/View;

    .line 852
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput v1, v0, Landroid/support/v7/a/c$a;->v:I

    .line 853
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-boolean v1, v0, Landroid/support/v7/a/c$a;->B:Z

    .line 854
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->h:Ljava/lang/CharSequence;

    .line 398
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->k:Ljava/lang/CharSequence;

    .line 492
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 493
    return-object p0
.end method

.method public b()Landroid/support/v7/a/d;
    .locals 3

    .prologue
    .line 930
    new-instance v0, Landroid/support/v7/a/d;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    iget v2, p0, Landroid/support/v7/a/d$a;->b:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/a/d;-><init>(Landroid/content/Context;I)V

    .line 931
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v2, v0, Landroid/support/v7/a/d;->a:Landroid/support/v7/a/c;

    invoke-virtual {v1, v2}, Landroid/support/v7/a/c$a;->a(Landroid/support/v7/a/c;)V

    .line 932
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-boolean v1, v1, Landroid/support/v7/a/c$a;->o:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setCancelable(Z)V

    .line 933
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-boolean v1, v1, Landroid/support/v7/a/c$a;->o:Z

    if-eqz v1, :cond_0

    .line 934
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setCanceledOnTouchOutside(Z)V

    .line 936
    :cond_0
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->p:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 937
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->q:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 938
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 939
    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->r:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 941
    :cond_1
    return-object v0
.end method

.method public c(I)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput p1, v0, Landroid/support/v7/a/c$a;->c:I

    .line 410
    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/c$a;->m:Ljava/lang/CharSequence;

    .line 505
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 506
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p1, v0, Landroid/support/v7/a/c$a;->m:Ljava/lang/CharSequence;

    .line 518
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 519
    return-object p0
.end method

.method public c()Landroid/support/v7/a/d;
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    .line 956
    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 957
    return-object v0
.end method

.method public d(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iget-object v1, v1, Landroid/support/v7/a/c$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/c$a;->s:[Ljava/lang/CharSequence;

    .line 581
    iget-object v0, p0, Landroid/support/v7/a/d$a;->a:Landroid/support/v7/a/c$a;

    iput-object p2, v0, Landroid/support/v7/a/c$a;->u:Landroid/content/DialogInterface$OnClickListener;

    .line 582
    return-object p0
.end method
