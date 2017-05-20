.class public final Landroid/support/v4/app/av;
.super Landroid/support/v4/app/ax$a;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/av$b;,
        Landroid/support/v4/app/av$d;,
        Landroid/support/v4/app/av$c;,
        Landroid/support/v4/app/av$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/support/v4/app/ax$a$a;

.field private static final g:Landroid/support/v4/app/av$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 262
    new-instance v0, Landroid/support/v4/app/av$b;

    invoke-direct {v0}, Landroid/support/v4/app/av$b;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->g:Landroid/support/v4/app/av$a;

    .line 272
    :goto_0
    new-instance v0, Landroid/support/v4/app/av$1;

    invoke-direct {v0}, Landroid/support/v4/app/av$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->a:Landroid/support/v4/app/ax$a$a;

    return-void

    .line 263
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 264
    new-instance v0, Landroid/support/v4/app/av$d;

    invoke-direct {v0}, Landroid/support/v4/app/av$d;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->g:Landroid/support/v4/app/av$a;

    goto :goto_0

    .line 266
    :cond_1
    new-instance v0, Landroid/support/v4/app/av$c;

    invoke-direct {v0}, Landroid/support/v4/app/av$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/av;->g:Landroid/support/v4/app/av$a;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/app/av;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v4/app/av;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/app/av;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Landroid/support/v4/app/av;->e:Z

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/app/av;->f:Landroid/os/Bundle;

    return-object v0
.end method
