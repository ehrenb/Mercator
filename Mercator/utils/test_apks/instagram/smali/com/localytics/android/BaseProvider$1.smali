.class Lcom/localytics/android/BaseProvider$1;
.super Ljava/lang/Object;
.source "BaseProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/BaseProvider;->vacuumIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/BaseProvider;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseProvider;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/localytics/android/BaseProvider$1;->this$0:Lcom/localytics/android/BaseProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 324
    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/localytics/android/BaseProvider$1;->this$0:Lcom/localytics/android/BaseProvider;

    iget-object v0, v0, Lcom/localytics/android/BaseProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PRAGMA incremental_vacuum(0);"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 328
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 339
    if-eqz v1, :cond_1

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 335
    :try_start_1
    const-string v2, "Auto-vacuum error"

    invoke-static {v2, v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    if-eqz v1, :cond_1

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 341
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_2
    throw v0
.end method
