.class public final Landroid/support/v4/content/n$a;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/n$a$a;
    }
.end annotation


# static fields
.field private static a:Landroid/support/v4/content/n$a;


# instance fields
.field private final b:Landroid/support/v4/content/n$a$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/content/n$a$a;

    invoke-direct {v0}, Landroid/support/v4/content/n$a$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/n$a;->b:Landroid/support/v4/content/n$a$a;

    .line 49
    return-void
.end method

.method public static a()Landroid/support/v4/content/n$a;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/support/v4/content/n$a;->a:Landroid/support/v4/content/n$a;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/support/v4/content/n$a;

    invoke-direct {v0}, Landroid/support/v4/content/n$a;-><init>()V

    sput-object v0, Landroid/support/v4/content/n$a;->a:Landroid/support/v4/content/n$a;

    .line 55
    :cond_0
    sget-object v0, Landroid/support/v4/content/n$a;->a:Landroid/support/v4/content/n$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/content/n$a;->b:Landroid/support/v4/content/n$a$a;

    invoke-virtual {v0, p1}, Landroid/support/v4/content/n$a$a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 63
    return-void
.end method
